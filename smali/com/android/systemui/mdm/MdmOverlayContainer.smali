.class public Lcom/android/systemui/mdm/MdmOverlayContainer;
.super Ljava/lang/Object;
.source "MdmOverlayContainer.java"


# static fields
.field private static TAG:Ljava/lang/String; = "MdmOverlayContainer"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

.field private mMdmOverlayView:Landroid/view/View;

.field private mPreviousState:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBarStateControllerLazy:Ldagger/Lazy;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/mdm/MdmOverlayContainer;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mPreviousState:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/mdm/MdmOverlayContainer;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mPreviousState:I

    return p1
.end method


# virtual methods
.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 46
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$id;->keyguard_mdm_overlay_container:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    .line 47
    iget-object p1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBarStateControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    new-instance v0, Lcom/android/systemui/mdm/MdmOverlayContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/mdm/MdmOverlayContainer$1;-><init>(Lcom/android/systemui/mdm/MdmOverlayContainer;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public updateMdmPolicy()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isMdmCanShowing()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_5

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mLockscreenOverlay:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;

    iget-object v2, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Landroid/view/View;

    .line 69
    iget-object v2, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 72
    :cond_1
    sget-object v0, Lcom/android/systemui/mdm/MdmOverlayContainer;->TAG:Ljava/lang/String;

    const-string v2, "mMdmOverlayView is not null!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 77
    :cond_2
    sget-object p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->TAG:Ljava/lang/String;

    const-string v0, "mMDMOverlayContainer is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 81
    iget-object v3, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 82
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 83
    iput-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Landroid/view/View;

    .line 85
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 90
    sget-object v0, Lcom/android/systemui/mdm/MdmOverlayContainer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lockscren Overlay creation fails: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    .line 94
    iget-object v3, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 95
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 96
    iput-object v1, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mMdmOverlayView:Landroid/view/View;

    .line 98
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/mdm/MdmOverlayContainer;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method
