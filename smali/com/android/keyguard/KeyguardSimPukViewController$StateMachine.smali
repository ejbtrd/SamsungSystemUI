.class public Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StateMachine"
.end annotation


# instance fields
.field protected mState:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukViewController;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 152
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    return-void
.end method


# virtual methods
.method public next()V
    .locals 3

    .line 157
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->checkPuk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 160
    sget v0, Lcom/android/systemui/R$string;->kg_puk_enter_pin_hint:I

    goto :goto_0

    .line 162
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_sim_puk_hint:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v1, :cond_3

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->checkPin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 167
    sget v0, Lcom/android/systemui/R$string;->kg_enter_confirm_pin_hint:I

    goto :goto_0

    .line 169
    :cond_2
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_5

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->confirmPin()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    .line 173
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 174
    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_unlock_progress_dialog_message:I

    .line 175
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->updateSim()V

    goto :goto_0

    .line 177
    :cond_4
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 178
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_confirm_pin_hint:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$000(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v2, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_6

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(I)V

    :cond_6
    return-void
.end method

.method reset()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPinText:Ljava/lang/String;

    .line 190
    iput-object v1, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mPukText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 191
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->mState:I

    .line 192
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->handleSubInfoChangeIfNeeded()V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSimPukViewController;->mShowDefaultMessage:Z

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->showDefaultMessage()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$100(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget v2, v2, Lcom/android/keyguard/KeyguardSimPukViewController;->mSubId:I

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v0

    .line 198
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukViewController;->access$200(Lcom/android/keyguard/KeyguardSimPukViewController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSimPukView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_esim_area:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardEsimArea;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 199
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
