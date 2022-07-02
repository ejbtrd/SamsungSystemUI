.class public Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;
.super Lcom/android/systemui/util/ViewController;
.source "ActivatableNotificationViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mExpandableOutlineViewController:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mNotificationTapHelper:Lcom/android/systemui/statusbar/phone/NotificationTapHelper;

.field private final mTouchHandler:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;


# direct methods
.method public static synthetic $r8$lambda$vb5YR3sj9r9VWSZioh03HDaSyD4(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->lambda$new$0(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$Factory;Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 43
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mTouchHandler:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;

    .line 54
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mExpandableOutlineViewController:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    .line 55
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 56
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 57
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 59
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 70
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$$ExternalSyntheticLambda1;

    invoke-direct {p4, p3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$$ExternalSyntheticLambda2;

    invoke-direct {p5, p3}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 59
    invoke-virtual {p2, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$Factory;->create(Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;)Lcom/android/systemui/statusbar/phone/NotificationTapHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mNotificationTapHelper:Lcom/android/systemui/statusbar/phone/NotificationTapHelper;

    .line 72
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    new-instance p2, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setOnActivatedListener(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$OnActivatedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/classifier/FalsingCollector;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Landroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/statusbar/phone/NotificationTapHelper;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mNotificationTapHelper:Lcom/android/systemui/statusbar/phone/NotificationTapHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeActive()V

    .line 63
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p1}, Lcom/android/systemui/classifier/FalsingCollector;->onNotificationActive()V

    .line 65
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    goto :goto_0

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->makeInactive(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mExpandableOutlineViewController:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineViewController;->init()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mTouchHandler:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mTouchHandler:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setTouchHandler(Lcom/android/systemui/Gefingerpoken;)V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 0

    return-void
.end method

.method protected onViewDetached()V
    .locals 0

    return-void
.end method
