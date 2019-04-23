
import java.io.*;
import java.util.*;

public class DateTime {


	private static void println(String data) throws IOException{
		System.out.println(data);
	}
	public static void main(String[] args) throws IOException{
		long st = System.currentTimeMillis();

		println("\r\nこれから日付と時刻を試します\r\n");

		/*
			カスタムの日付/時刻を得るには次のようにする
			Calendar c = Calendar.getInstance();
			c.set(1996,1,23,9,41,12);
		*/

		Calendar c = Calendar.getInstance();
		println("\r\n日付と時刻");
		println("Calendar.getInstance().get(...)");
		println(" ERA : "+c.get(Calendar.ERA));
		println(" YEAR : "+c.get(Calendar.YEAR));
		println(" MONTH : "+c.get(Calendar.MONTH));
		println("      JANUARY    = "+Calendar.JANUARY);
		println("      FEBRUARY   = "+Calendar.FEBRUARY);
		println("      MARCH      = "+Calendar.MARCH);
		println("      APRIL      = "+Calendar.APRIL);
		println("      MAY        = "+Calendar.MAY);
		println("      JUNE       = "+Calendar.JUNE);
		println("      JULY       = "+Calendar.JULY);
		println("      AUGUST     = "+Calendar.AUGUST);
		println("      SEPTEMBER  = "+Calendar.SEPTEMBER);
		println("      OCTOBER    = "+Calendar.OCTOBER);
		println("      NOVEMBER   = "+Calendar.NOVEMBER);
		println("      DECEMBER   = "+Calendar.DECEMBER);
		println("      UNDECIMBER = "+Calendar.UNDECIMBER);
		println(" WEEK_OF_MONTH : "+c.get(Calendar.WEEK_OF_MONTH));
		println(" WEEK_OF_YEAR : "+c.get(Calendar.WEEK_OF_YEAR));
		println(" DAY_OF_MONTH : "+c.get(Calendar.DAY_OF_MONTH)); // DAY_OF_MONTH = DATE
		println(" DAY_OF_WEEK : "+c.get(Calendar.DAY_OF_WEEK));
		println("      SUNDAY    = "+Calendar.SUNDAY);
		println("      MONDAY    = "+Calendar.MONDAY);
		println("      TUESDAY   = "+Calendar.TUESDAY);
		println("      WEDNESDAY = "+Calendar.WEDNESDAY);
		println("      THURSDAY  = "+Calendar.THURSDAY);
		println("      FRIDAY    = "+Calendar.FRIDAY);
		println("      SATURDAY  = "+Calendar.SATURDAY);
		println(" DAY_OF_WEEK_IN_MONTH : "+c.get(Calendar.DAY_OF_WEEK_IN_MONTH));
		println(" DAY_OF_YEAR : "+c.get(Calendar.DAY_OF_YEAR));
		println(" HOUR_OF_DAY : "+c.get(Calendar.HOUR_OF_DAY));
		println(" HOUR : "+c.get(Calendar.HOUR));
		println(" AM_PM : "+c.get(Calendar.AM_PM));
		println("      AM = "+Calendar.AM+"   PM = "+Calendar.PM);
		println(" MINUTE : "+c.get(Calendar.MINUTE));
		println(" SECOND : "+c.get(Calendar.SECOND));
		println(" MILLISECOND : "+c.get(Calendar.MILLISECOND));
		println(" ZONE_OFFSET : "+c.get(Calendar.ZONE_OFFSET));

		println("\r\n時間帯");
		TimeZone t = TimeZone.getDefault();
		println("TimeZone.getDefault()");
		println(".getDisplayName(LONG)  = \""+t.getDisplayName(false,TimeZone.LONG)+"\"");
		println(".getDisplayName(SHORT) = \""+t.getDisplayName(false,TimeZone.LONG)+"\"");
		println("              .getID() = \""+t.getID()+"\"");
		println("    .useDaylightTime() = "+t.useDaylightTime());

		println("\r\nフォーマット");
		Date d = new Date();
		println("String.format() = \"");
		println(
			String.format("datetime    %%tc : %tc %n",d)+
			String.format("date        %%tD : %tD = %%tx %n",d)+
			String.format("            %%tF : %tF %n",d)+
			String.format("time        %%tT : %tT = %%tX %n",d)+
			String.format("            %%tR : %tR %n",d)+
			String.format("            %%tr : %tr %n",d)+
			String.format("century     %%tC : %tC %n",d)+
			String.format("year        %%tY : %tY %n",d)+
			String.format("            %%ty : %ty %n",d)+
			String.format("month       %%tb : %tb = %%th %n",d)+
			String.format("            %%tB : %tB %n",d)+
			String.format("            %%tm : %tm %n",d)+
			String.format("day         %%td : %td %n",d)+
			String.format("            %%te : %te %n",d)+
			String.format("day/year    %%tj : %tj %n",d)+
			String.format("weekday     %%ta : %ta %n",d)+
			String.format("            %%tA : %tA %n",d)+
			String.format("hour        %%tH : %tH %n",d)+
			String.format("            %%tk : %tk %n",d)+
			String.format("            %%tI : %tI %n",d)+
			String.format("            %%tl : %tl %n",d)+
			String.format("AM/PM       %%tp : %tp %n",d)+
			String.format("minute      %%tM : %tM %n",d)+
			String.format("second      %%tS : %tS %n",d)+
			String.format("UNIX epoch  %%ts : %ts %n",d)+
			String.format("milli+micro %%tN : %tN %n",d)+
			String.format("millisecond %%tL : %tL %n",d)+
			String.format("timezone    %%tZ : %tZ %n",d)+
			String.format("            %%tz : %tz",d)
		);
		println("\"");

		long en=System.currentTimeMillis();
		println("\r\nこの処理に要した時間: "+(en-st)+" ミリ秒");

		println("\r\n\r\n");

	}

}