.class public Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerStubReflection;
.super Lcom/samsung/android/edgelighting/reflection/base/AbstractStubReflection;
.source "IWindowManagerStubReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractStubReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;

    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/reflection/base/AbstractStubReflection;->asInterface(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.view.IWindowManager$Stub"

    return-object p0
.end method
