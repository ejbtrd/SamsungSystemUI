.class public final Lcom/google/dexmaker/dx/rop/code/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# static fields
.field public static final LIST_Error:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public static final LIST_Error_ArithmeticException:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public static final LIST_Error_ClassCastException:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public static final LIST_Error_NegativeArraySizeException:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public static final LIST_Error_NullPointerException:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public static final LIST_Error_Null_ArrayIndexOutOfBounds:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public static final LIST_Error_Null_ArrayIndex_ArrayStore:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public static final LIST_Error_Null_IllegalMonitorStateException:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

.field public static final TYPE_ArithmeticException:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final TYPE_ArrayIndexOutOfBoundsException:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final TYPE_ArrayStoreException:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final TYPE_ClassCastException:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final TYPE_Error:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final TYPE_IllegalMonitorStateException:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final TYPE_NegativeArraySizeException:Lcom/google/dexmaker/dx/rop/type/Type;

.field public static final TYPE_NullPointerException:Lcom/google/dexmaker/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "Ljava/lang/ArithmeticException;"

    .line 27
    invoke-static {v0}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/code/Exceptions;->TYPE_ArithmeticException:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v1, "Ljava/lang/ArrayIndexOutOfBoundsException;"

    .line 34
    invoke-static {v1}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v1

    sput-object v1, Lcom/google/dexmaker/dx/rop/code/Exceptions;->TYPE_ArrayIndexOutOfBoundsException:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v2, "Ljava/lang/ArrayStoreException;"

    .line 38
    invoke-static {v2}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v2

    sput-object v2, Lcom/google/dexmaker/dx/rop/code/Exceptions;->TYPE_ArrayStoreException:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v3, "Ljava/lang/ClassCastException;"

    .line 42
    invoke-static {v3}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v3

    sput-object v3, Lcom/google/dexmaker/dx/rop/code/Exceptions;->TYPE_ClassCastException:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v4, "Ljava/lang/Error;"

    .line 46
    invoke-static {v4}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v4

    sput-object v4, Lcom/google/dexmaker/dx/rop/code/Exceptions;->TYPE_Error:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v5, "Ljava/lang/IllegalMonitorStateException;"

    .line 52
    invoke-static {v5}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v5

    sput-object v5, Lcom/google/dexmaker/dx/rop/code/Exceptions;->TYPE_IllegalMonitorStateException:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v6, "Ljava/lang/NegativeArraySizeException;"

    .line 56
    invoke-static {v6}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v6

    sput-object v6, Lcom/google/dexmaker/dx/rop/code/Exceptions;->TYPE_NegativeArraySizeException:Lcom/google/dexmaker/dx/rop/type/Type;

    const-string v7, "Ljava/lang/NullPointerException;"

    .line 60
    invoke-static {v7}, Lcom/google/dexmaker/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/google/dexmaker/dx/rop/type/Type;

    move-result-object v7

    sput-object v7, Lcom/google/dexmaker/dx/rop/code/Exceptions;->TYPE_NullPointerException:Lcom/google/dexmaker/dx/rop/type/Type;

    .line 64
    invoke-static {v4}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    move-result-object v8

    sput-object v8, Lcom/google/dexmaker/dx/rop/code/Exceptions;->LIST_Error:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 70
    invoke-static {v4, v0}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/code/Exceptions;->LIST_Error_ArithmeticException:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 77
    invoke-static {v4, v3}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/code/Exceptions;->LIST_Error_ClassCastException:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 84
    invoke-static {v4, v6}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/code/Exceptions;->LIST_Error_NegativeArraySizeException:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 91
    invoke-static {v4, v7}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/code/Exceptions;->LIST_Error_NullPointerException:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 99
    invoke-static {v4, v7, v1}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/code/Exceptions;->LIST_Error_Null_ArrayIndexOutOfBounds:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 110
    invoke-static {v4, v7, v1, v2}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/code/Exceptions;->LIST_Error_Null_ArrayIndex_ArrayStore:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    .line 122
    invoke-static {v4, v7, v5}, Lcom/google/dexmaker/dx/rop/type/StdTypeList;->make(Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;Lcom/google/dexmaker/dx/rop/type/Type;)Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/dx/rop/code/Exceptions;->LIST_Error_Null_IllegalMonitorStateException:Lcom/google/dexmaker/dx/rop/type/StdTypeList;

    return-void
.end method
