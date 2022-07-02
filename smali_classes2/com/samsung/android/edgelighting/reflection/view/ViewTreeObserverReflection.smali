.class public Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverReflection;
.super Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;
.source "ViewTreeObserverReflection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "listener"
        }
    .end annotation

    const-string v0, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    .line 25
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->loadClassIfNeeded(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "addOnComputeInternalInsetsListener"

    .line 33
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.view.ViewTreeObserver"

    return-object p0
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "listener"
        }
    .end annotation

    const-string v0, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->loadClassIfNeeded(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string/jumbo p2, "removeOnComputeInternalInsetsListener"

    .line 49
    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
