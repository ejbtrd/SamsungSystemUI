.class public Landroidx/reflect/os/SeslBuildReflector$SeslVersionReflector;
.super Ljava/lang/Object;
.source "SeslBuildReflector.java"


# static fields
.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Landroid/os/Build$VERSION;

    sput-object v0, Landroidx/reflect/os/SeslBuildReflector$SeslVersionReflector;->mClass:Ljava/lang/Class;

    return-void
.end method

.method public static getField_SEM_PLATFORM_INT()I
    .locals 3

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 37
    sget-object v0, Landroidx/reflect/os/SeslBuildReflector$SeslVersionReflector;->mClass:Ljava/lang/Class;

    const-string v1, "SEM_PLATFORM_INT"

    invoke-static {v0, v1}, Landroidx/reflect/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    invoke-static {v1, v0}, Landroidx/reflect/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 42
    invoke-static {v1, v0}, Landroidx/reflect/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
