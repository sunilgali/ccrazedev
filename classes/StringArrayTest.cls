public class StringArrayTest {
    
    public static List<String> generateStringArray(Integer len){
        List<String> ret = new List<String>();
        for(Integer i = 0; i < len; i++){
            ret.add('Test '+i);
        }
        return ret;
    }

}