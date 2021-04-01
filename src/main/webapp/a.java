class a{
    public static void main(String args[]) {
        String username = "scbn";
        System.out.println("select ts, orderid, src, dest, bill, payment, id, status from orders ord, track tr where username = '"+username+"' and ord.orderid = tr.id;" );
    }
    
}