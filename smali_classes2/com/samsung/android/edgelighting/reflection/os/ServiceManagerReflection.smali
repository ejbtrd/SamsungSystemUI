.class public Lcom/samsung/android/edgelighting/reflection/os/ServiceManagerReflection;
.super Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;
.source "ServiceManagerReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 26
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "checkService"

    .line 29
    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->invokeStaticMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 30
    :cond_0
    check-cast p0, Landroid/os/IBinder;

    :goto_0
    return-object p0
.end method

.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.os.ServiceManager"

    return-object p0
.end method
