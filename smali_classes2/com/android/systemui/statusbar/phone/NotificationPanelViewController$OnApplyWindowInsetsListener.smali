.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "NotificationPanelViewController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnApplyWindowInsetsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 7087
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V
    .locals 0

    .line 7087
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 7090
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v0

    or-int/2addr p1, v0

    .line 7091
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 7092
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget v1, p1, Landroid/graphics/Insets;->top:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 7094
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 7095
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 7096
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getPanelIconBottomMargin(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 7094
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F

    .line 7097
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsMinHeight(I)V

    .line 7099
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget p1, p1, Landroid/graphics/Insets;->right:I

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 7101
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavBarKeyboardButtonShowing:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    .line 7102
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    if-nez v0, :cond_2

    .line 7103
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    .line 7101
    :goto_1
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 7108
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$15900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 7110
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$14800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateNavBarHeight(I)V

    .line 7114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->setCutouHeight(I)V

    .line 7115
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->setNavBarHeight(I)V

    .line 7116
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_4

    check-cast p1, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSFragment;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 7117
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 7118
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 7119
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$16600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 7120
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$17202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 7121
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast p0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->updateResources()V

    :cond_4
    return-object p2
.end method
