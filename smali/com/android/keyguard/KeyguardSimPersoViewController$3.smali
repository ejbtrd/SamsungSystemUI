.class Lcom/android/keyguard/KeyguardSimPersoViewController$3;
.super Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;
.source "KeyguardSimPersoViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPersoViewController;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

.field final synthetic val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public static synthetic $r8$lambda$hSCLzSHNAlct7R7fG4p8G7N42Lw(Lcom/android/keyguard/KeyguardSimPersoViewController$3;ZLcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->lambda$onSimCheckResponse$0(ZLcom/android/keyguard/KeyguardSecurityCallback;)V

    return-void
.end method

.method constructor <init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onSimCheckResponse$0(ZLcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 5

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$900(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPersoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1000(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v0, "KeyguardSimPersoView"

    if-eqz p1, :cond_4

    .line 247
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    const-string/jumbo v3, "verifyPasswordAndUnlock onSimCheckResponse verifySucceed"

    .line 249
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KTT_USIM_TEXT:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1102(I)I

    .line 256
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1200()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x13

    if-ne v0, v4, :cond_2

    .line 258
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v4, 0x14

    if-ne v0, v4, :cond_2

    .line 261
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 262
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1300()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$400(Lcom/android/keyguard/KeyguardSimPersoViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$500(Lcom/android/keyguard/KeyguardSimPersoViewController;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->isPaused()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_0

    :cond_4
    const-string/jumbo p1, "verifyPasswordAndUnlock onSimCheckResponse verifyFail"

    .line 270
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_KTT_USIM_TEXT:Z

    if-eqz p1, :cond_5

    .line 273
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1104()I

    .line 275
    :cond_5
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SKT_USIM_TEXT:Z

    if-eqz p1, :cond_6

    .line 276
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 277
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1400(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->kg_password_perso_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_6
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1100()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_7

    .line 280
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 281
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1500(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->kg_password_perso_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 284
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1600(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->kg_password_perso_max_failed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 288
    :cond_8
    :goto_0
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 289
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {p1, v2}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1702(Lcom/android/keyguard/KeyguardSimPersoViewController;Z)Z

    .line 290
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$1802(Lcom/android/keyguard/KeyguardSimPersoViewController;Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;)Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    return-void
.end method


# virtual methods
.method onSimCheckResponse(Z)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPersoViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->access$800(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController$3;->val$keyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/keyguard/KeyguardSimPersoViewController$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController$3;ZLcom/android/keyguard/KeyguardSecurityCallback;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
