.class Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefferedSlotButton"
.end annotation


# instance fields
.field private final mButtonView:Landroid/view/ViewGroup;

.field private mCarrierNameText:Landroid/widget/TextView;

.field private mCategoryText:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

.field private mImsDataInfoLine:Landroid/view/ViewGroup;

.field private mSimImageForDataInfo:Landroid/widget/ImageView;

.field private mSimImageForSimName:Landroid/widget/ImageView;

.field private mSimNameAndImageLine:Landroid/view/ViewGroup;

.field private mSimNameOrAskText:Landroid/widget/TextView;

.field private mSimNameText:Landroid/widget/TextView;

.field private final mSimSlotId:I

.field private mTextSimPrimary:Landroid/widget/TextView;

.field private final mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

.field final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;


# direct methods
.method public static synthetic $r8$lambda$PdIMiwZKKXpcyehrJIaritci3Pw(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sWLa8AZOe3_0KXAsZHdJOc7omfc(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->lambda$new$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    .line 249
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->qs_panel_multi_sim_preffered_slot_button:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 251
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    .line 252
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p4, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iput-object p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    .line 255
    sget-object p4, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne p2, p4, :cond_0

    const/4 p2, 0x1

    .line 256
    iput p2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    goto :goto_0

    .line 258
    :cond_0
    iput v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    .line 261
    :goto_0
    iput-object p3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->setViews(Landroid/view/ViewGroup;)V

    .line 263
    new-instance p2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    new-instance p2, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V
    .locals 0

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->destroyIconManager()V

    return-void
.end method

.method private destroyIconManager()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    if-eqz v0, :cond_0

    .line 310
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    :cond_0
    return-void
.end method

.method private getDefaultSlotId(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)I
    .locals 1

    .line 403
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 411
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    return p0

    .line 407
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    return p0

    .line 405
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    return p0
.end method

.method private getSIMIconFillColor()I
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 322
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$300(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/DualToneHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/DualToneHandler;->getSingleColor(F)I

    move-result p0

    return p0
.end method

.method private getTitleString(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)Ljava/lang/String;
    .locals 1

    .line 476
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 482
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->qs_multisim_data_preffered_btn_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 480
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->qs_multisim_sms_preffered_btn_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 478
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->qs_multisim_voice_preffered_btn_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initIconManager()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    if-eqz v0, :cond_0

    .line 316
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    .line 264
    const-class p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 265
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->qs_multisim_airplanemode_on:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$500(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->qs_multisim_data_switching:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 270
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    if-nez v0, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 273
    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 276
    :cond_3
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 277
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result p1

    if-nez p1, :cond_4

    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 278
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$900(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->launchSimManager()V

    goto :goto_1

    .line 280
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO1:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SIMINFO2:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne p1, v0, :cond_5

    goto :goto_0

    .line 284
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p1, p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$1000(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;)V

    goto :goto_1

    .line 281
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$900(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->launchSimManager()V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)Z
    .locals 1

    .line 289
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$800(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$800(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$800(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$900(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->launchSimManager()V

    .line 295
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QPPE1015"

    const-string v0, "QUICK_PANEL_LAYOUT"

    invoke-static {p0, p1, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendRunstoneEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private refreshSlotInfo()V
    .locals 6

    .line 350
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->getDefaultSlotId(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)I

    move-result v0

    .line 351
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->VOICE:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    if-le v0, v3, :cond_2

    :cond_1
    move v0, v4

    :cond_2
    :goto_0
    const/16 v5, 0x8

    if-ne v1, v2, :cond_4

    if-gez v0, :cond_4

    .line 358
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 359
    invoke-static {}, Lcom/android/systemui/Operator;->shouldUseShowAllSimsString()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->qs_multisim_voice_show_all_sim:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->qs_multisim_voice_ask_always:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_4
    if-ne v1, v2, :cond_5

    if-le v0, v3, :cond_5

    .line 367
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->qs_multisim_voice_others:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 371
    :cond_5
    sget-object v3, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$500(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 372
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 373
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->qs_multisim_data_turned_off:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 376
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-eq v1, v2, :cond_9

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->SMS:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-eq v1, v2, :cond_9

    if-ne v1, v3, :cond_7

    goto :goto_3

    .line 385
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mImsDataInfoLine:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForDataInfo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    iget v3, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    invoke-static {v2, v3}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$600(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    if-ne v1, v0, :cond_8

    .line 389
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mTextSimPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 391
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mTextSimPrimary:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 377
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v2, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$600(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 379
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v2}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method public getButtonView()Landroid/view/View;
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getType()Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    return-object p0
.end method

.method protected setViews(Landroid/view/ViewGroup;)V
    .locals 2

    .line 327
    sget v0, Lcom/android/systemui/R$id;->slot_button_ims_data_info_line:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mImsDataInfoLine:Landroid/view/ViewGroup;

    .line 328
    sget v0, Lcom/android/systemui/R$id;->slot_button_sim_name_and_image_line:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameAndImageLine:Landroid/view/ViewGroup;

    .line 329
    sget v0, Lcom/android/systemui/R$id;->slot_button_category_text_line:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    .line 330
    sget v0, Lcom/android/systemui/R$id;->slot_button_sim_name_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    .line 331
    sget v0, Lcom/android/systemui/R$id;->slot_button_carrier_name_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    .line 332
    sget v0, Lcom/android/systemui/R$id;->slot_button_preferred_sim_image_for_data_info:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForDataInfo:Landroid/widget/ImageView;

    .line 333
    sget v0, Lcom/android/systemui/R$id;->slot_button_preferred_sim_image_for_sim_name:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    .line 334
    sget v0, Lcom/android/systemui/R$id;->slot_button_sim_name_or_ask_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    .line 335
    sget v0, Lcom/android/systemui/R$id;->slot_button_primary_sim_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mTextSimPrimary:Landroid/widget/TextView;

    .line 336
    invoke-static {}, Lcom/android/systemui/Operator;->supportNetworkInfoAtMultisimBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    sget v0, Lcom/android/systemui/R$id;->slotNetworkIcons:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    .line 339
    new-instance v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimSlotId:I

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;-><init>(Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    .line 340
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->getSIMIconFillColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->initIconManager()V

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->getTitleString(Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->updateTextColor()V

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->refreshSlotInfo()V

    return-void
.end method

.method public updateTextColor()V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$700(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$700(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$700(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v1}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$700(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mIconManager:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$SIMInfoIconManager;

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->getSIMIconFillColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCategoryText:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 428
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    sget-object v2, Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;->DATA:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$500(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    .line 429
    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$400(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Lcom/android/systemui/settings/multisim/MultiSIMData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;

    invoke-static {v0}, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;->access$200(Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    const v1, 0x3f3d70a4    # 0.74f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 446
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 447
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 448
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 430
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameText:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mCarrierNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 432
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimNameOrAskText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 433
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mSimImageForSimName:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 435
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 452
    sget-object v0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$2;->$SwitchMap$com$android$systemui$settings$multisim$MultiSIMController$ButtonType:[I

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mType:Lcom/android/systemui/settings/multisim/MultiSIMController$ButtonType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    goto :goto_2

    .line 462
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$drawable;->qs_panel_multi_sim_button_right_ripple_bg:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 458
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$drawable;->qs_panel_multi_sim_menu_item_middle_ripple_bg:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 455
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mButtonView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMPreferredSlotView$PrefferedSlotButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$drawable;->qs_panel_multi_sim_button_left_ripple_bg:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_2
    return-void
.end method
