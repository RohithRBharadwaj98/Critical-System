pragma SPARK_Mode;

package body Loopexample is 

   
   procedure Loopproc (N : in Integer; I, Res : out Integer) is
   begin
      I := 0;
      Res := 0;
      loop
         pragma Loop_Invariant (Res = 2 * I and  I in 0 .. N -1 and N  in 1 .. 1000 and Res < N);
         I := I + 1;
         Res := Res + 2;
         exit when Res >= N;
      end loop;
   end Loopproc;

      
     
   
end Loopexample;   
     
