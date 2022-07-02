.class final Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;
.super Ljava/lang/Object;
.source "ChallengeDialogs.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ChallengeDialogs;->createCustomPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $instructions:I

.field final synthetic $this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

.field final synthetic $useAlphaNumeric:Z

.field final synthetic $useRetryStrings:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;IZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    iput p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$instructions:I

    iput-boolean p3, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$useRetryStrings:Z

    iput-boolean p4, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$useAlphaNumeric:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    .line 203
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    sget v0, Lcom/android/systemui/R$id;->controls_pin_input_layout:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    .line 204
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 205
    iget v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$instructions:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 207
    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$useRetryStrings:Z

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->controls_pin_error_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    sget v1, Lcom/android/systemui/R$id;->controls_pin_use_alpha_text:I

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 211
    sget v1, Lcom/android/systemui/R$string;->controls_custom_pin_use_alphanumeric:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$color;->basic_interaction_dialog_button:I

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 213
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    const/4 v2, -0x1

    .line 214
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v2, -0x2

    .line 215
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 218
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    sget v1, Lcom/android/systemui/R$id;->controls_pin_use_alpha:I

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 219
    iget-boolean v2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$useAlphaNumeric:Z

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    sget-object v2, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->access$setInputType(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/widget/EditText;Z)V

    .line 221
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;->$this_apply:Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4$2;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4$2;-><init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
