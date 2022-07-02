.class public abstract Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mOnConfigurationChangedListener:Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;

.field protected mPanelLogger:Lcom/android/systemui/qs/logging/PanelLogger;

.field private mTouchHandler:Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOnConfigurationChangedListener:Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v1, "PanelView.dispatchTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchHandler:Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnConfigurationChangedListener(Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOnConfigurationChangedListener:Lcom/android/systemui/statusbar/phone/PanelView$OnConfigurationChangedListener;

    return-void
.end method

.method public setOnTouchListener(Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchHandler:Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;

    return-void
.end method

.method public setPanelLogger(Lcom/android/systemui/qs/logging/PanelLogger;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelLogger:Lcom/android/systemui/qs/logging/PanelLogger;

    return-void
.end method
