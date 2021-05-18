//  (version 1.8 : 52.0, super bit)
public class java.lang.Object {
  
  // Method descriptor #8 ()V
  // Stack: 0, Locals: 1
  public Object();
    0  return

  
  // Method descriptor #8 ()V
  private static native void registerNatives();
  
  // Method descriptor #52 ()Ljava/lang/Class;
  // Signature: ()Ljava/lang/Class<*>;
  public final native java.lang.Class getClass();
  
  // Method descriptor #5 ()I
  public native int hashCode();
  
  // Method descriptor #12 (Ljava/lang/Object;)Z
  // Stack: 2, Locals: 2
  public boolean equals(java.lang.Object arg0);
     0  aload_0 [this]
     1  aload_1 [arg0]
     2  if_acmpne 9
     5  iconst_1
     6  goto 10
     9  iconst_0
    10  ireturn
    Stack map table: number of frames 2
        [pc: 9, same]
        [pc: 10, same_locals_1_stack_item, stack: {int}]
  
  // Method descriptor #6 ()Ljava/lang/Object;
  protected native java.lang.Object clone() throws java.lang.CloneNotSupportedException;
  
  // Method descriptor #7 ()Ljava/lang/String;
  // Stack: 2, Locals: 1
  public java.lang.String toString();
     0  new java.lang.StringBuilder [50]
     3  dup
     4  invokespecial java.lang.StringBuilder() [72]
     7  aload_0 [this]
     8  invokevirtual java.lang.Object.getClass() : java.lang.Class [71]
    11  invokevirtual java.lang.Class.getName() : java.lang.String [65]
    14  invokevirtual java.lang.StringBuilder.append(java.lang.String) : java.lang.StringBuilder [74]
    17  ldc <String "@"> [2]
    19  invokevirtual java.lang.StringBuilder.append(java.lang.String) : java.lang.StringBuilder [74]
    22  aload_0 [this]
    23  invokevirtual java.lang.Object.hashCode() : int [68]
    26  invokestatic java.lang.Integer.toHexString(int) : java.lang.String [67]
    29  invokevirtual java.lang.StringBuilder.append(java.lang.String) : java.lang.StringBuilder [74]
    32  invokevirtual java.lang.StringBuilder.toString() : java.lang.String [73]
    35  areturn

  
  // Method descriptor #8 ()V
  public final native void notify();
  
  // Method descriptor #8 ()V
  public final native void notifyAll();
  
  // Method descriptor #10 (J)V
  public final native void wait(long arg0) throws java.lang.InterruptedException;
  
  // Method descriptor #11 (JI)V
  // Stack: 4, Locals: 4
  public final void wait(long arg0, int arg1) throws java.lang.InterruptedException;
     0  lload_1 [arg0]
     1  lconst_0
     2  lcmp
     3  ifge 16
     6  new java.lang.IllegalArgumentException [46]
     9  dup
    10  ldc <String "timeout value is negative"> [4]
    12  invokespecial java.lang.IllegalArgumentException(java.lang.String) [66]
    15  athrow
    16  iload_3 [arg1]
    17  iflt 26
    20  iload_3 [arg1]
    21  ldc <Integer 999999> [1]
    23  if_icmple 36
    26  new java.lang.IllegalArgumentException [46]
    29  dup
    30  ldc <String "nanosecond timeout value out of range"> [3]
    32  invokespecial java.lang.IllegalArgumentException(java.lang.String) [66]
    35  athrow
    36  iload_3 [arg1]
    37  ifle 44
    40  lload_1 [arg0]
    41  lconst_1
    42  ladd
    43  lstore_1 [arg0]
    44  aload_0 [this]
    45  lload_1 [arg0]
    46  invokevirtual java.lang.Object.wait(long) : void [70]
    49  return
    Stack map table: number of frames 4
        [pc: 16, same]
        [pc: 26, same]
        [pc: 36, same]
        [pc: 44, same]
  
  // Method descriptor #8 ()V
  // Stack: 3, Locals: 1
  public final void wait() throws java.lang.InterruptedException;
    0  aload_0 [this]
    1  lconst_0
    2  invokevirtual java.lang.Object.wait(long) : void [70]
    5  return

  
  // Method descriptor #8 ()V
  // Stack: 0, Locals: 1
  protected void finalize() throws java.lang.Throwable;
    0  return

  
  // Method descriptor #8 ()V
  // Stack: 0, Locals: 0
  static {};
    0  invokestatic java.lang.Object.registerNatives() : void [69]
    3  return

}