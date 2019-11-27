namespace main {
    class main{
        public static void main(string[] args){
            do
            {
                num = int.Parse(Console.ReadLine());
                soma += num;
                cont++;
            } while (num > -1);
            Console.WriteLine(soma/cont);
        }
    }
}
