.class public Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;
.super Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;
.source "ViewTreeObserverInternalInsetsInfoReflection.java"


# instance fields
.field public TOUCHABLE_INSETS_REGION:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBaseClassName()Ljava/lang/String;
    .locals 0

    const-string p0, "android.view.ViewTreeObserver$InternalInsetsInfo"

    return-object p0
.end method

.method public getTouchableRegion(Ljava/lang/Object;)Landroid/graphics/Region;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    const-string/jumbo v0, "touchableRegion"

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->getNormalValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 59
    :cond_0
    check-cast p0, Landroid/graphics/Region;

    :goto_0
    return-object p0
.end method

.method protected loadStaticFields()V
    .locals 1

    const-string v0, "TOUCHABLE_INSETS_REGION"

    .line 27
    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->getIntStaticValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edgelighting/reflection/view/ViewTreeObserverInternalInsetsInfoReflection;->TOUCHABLE_INSETS_REGION:I

    return-void
.end method

.method public setTouchableInsets(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "val"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 35
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    const-string/jumbo p2, "setTouchableInsets"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/samsung/android/edgelighting/reflection/base/AbstractBaseReflection;->invokeNormalMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
