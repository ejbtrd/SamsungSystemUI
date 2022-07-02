.class public Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;
.super Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;
.source "IWindowManagerReflection.java"


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;->mInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.view.IWindowManager"

    return-object p0
.end method

.method public getInitialDisplaySize(ILandroid/graphics/Point;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "arg1",
            "arg2"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    .line 39
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/graphics/Point;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 45
    iget-object v2, p0, Lcom/samsung/android/edgelighting/reflection/view/IWindowManagerReflection;->mInstance:Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    const-string p1, "getInitialDisplaySize"

    invoke-virtual {p0, v2, p1, v1, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
