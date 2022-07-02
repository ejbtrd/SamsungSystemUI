.class public Lcom/android/keyguard/KeyguardSimPukTMOViewController;
.super Lcom/android/keyguard/KeyguardInputViewController;
.source "KeyguardSimPukTMOViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardInputViewController<",
        "Lcom/android/keyguard/KeyguardSimPukTMOView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static synthetic $r8$lambda$eF-Z5ty1NOYz9yfapngqDFDEGeQ(Lcom/android/keyguard/KeyguardSimPukTMOViewController;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->lambda$initialize$0(Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPukTMOView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/keyguard/KeyguardInputViewController;-><init>(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;)V

    .line 27
    new-instance p1, Lcom/android/keyguard/KeyguardSimPukTMOViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardSimPukTMOViewController$1;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 69
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 70
    iput-object p5, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    .line 71
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPukTMOViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method private initialize()V
    .locals 7

    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukTMOView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_unlock_view_help_text:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUITextView;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110180

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v1, :cond_1

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->kg_sim_puk_tmo_help_pin_blocked:I

    .line 81
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->kg_sim_puk_tmo_help_contact_service_provider:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040443

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukTMOView;

    sget v3, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    .line 92
    sget v3, Lcom/android/systemui/R$string;->kg_lockscreen_emergency_call_button_text:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 94
    :cond_2
    sget v3, Lcom/android/systemui/R$string;->kg_sim_puk_tmo_enter_unlock_code:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 96
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mEmergencyButtonController:Lcom/android/keyguard/EmergencyButtonController;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukTMOView;

    sget v3, Lcom/android/systemui/R$id;->forgot_password_button:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/widget/SystemUIButton;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    .line 103
    sget v2, Lcom/android/systemui/R$string;->kg_sim_puk_tmo_sos_call:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 104
    new-instance v2, Lcom/android/keyguard/KeyguardSimPukTMOViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardSimPukTMOViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPukTMOViewController;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const/16 p0, 0x8

    .line 117
    invoke-virtual {v1, p0}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$initialize$0(Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 109
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string/jumbo v0, "tel"

    const-string v1, "911"

    .line 110
    invoke-static {v0, v1, p2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onViewAttached()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewAttached()V

    .line 130
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputViewController;->onViewDetached()V

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukTMOViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
