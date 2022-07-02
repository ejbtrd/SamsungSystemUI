.class public Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;
.super Ljava/lang/Object;
.source "SimTrayProtectionViewModel.java"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.systemui.popup.intent.SIM_CARD_TRAY_PROTECTION_POPUP"

    return-object p0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v1, "dismiss"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "show"

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v4, "SimTrayProtectionViewModel"

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->dismiss()V

    goto :goto_1

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string/jumbo v3, "waterproof"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    .line 52
    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const/4 v3, 0x1

    const-string/jumbo v4, "tray"

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    .line 56
    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getSimTrayProtectionDialog(IZI)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/SimTrayProtectionViewModel;->mSimTrayProtectionDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    .line 57
    invoke-interface {p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    :goto_1
    return-void
.end method
