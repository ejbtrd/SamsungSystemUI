.class public Lcom/android/systemui/statusbar/NotificationShelfController;
.super Ljava/lang/Object;
.source "NotificationShelfController.java"


# instance fields
.field private final mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

.field private mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mView:Lcom/android/systemui/statusbar/NotificationShelf;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationShelfManager;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 57
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 58
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 59
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 61
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 63
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShelfController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShelfController$1;-><init>(Lcom/android/systemui/statusbar/NotificationShelfController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationShelfController;)Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationShelfController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->bind(Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/NotificationShelfManager;)V

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-result-object p0

    return-object p0
.end method

.method public getView()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object p0
.end method

.method public getVisibility()I
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mActivatableNotificationViewController:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationShelf;->setController(Lcom/android/systemui/statusbar/NotificationShelfController;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-interface {v0, p0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V

    return-void
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShelfController;->mView:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
