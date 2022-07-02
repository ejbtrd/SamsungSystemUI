.class public abstract Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;
.super Landroid/widget/FrameLayout;
.source "AbsEdgeLightingView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

.field protected mEffectColors:[I

.field protected mScreenHeight:I

.field protected mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->resetScreenSize()V

    return-void
.end method

.method public resetScreenSize()V
    .locals 4

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/edgelighting/R$dimen;->navigation_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 56
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 57
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenHeight:I

    goto :goto_0

    .line 59
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenWidth:I

    .line 60
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mScreenHeight:I

    :goto_0
    return-void
.end method

.method public setEffectColors([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectColors"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEffectColors:[I

    return-void
.end method

.method public setOnDialogListener(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/AbsEdgeLightingView;->mEdgeListener:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$OnEdgeAnimationListener;

    return-void
.end method
