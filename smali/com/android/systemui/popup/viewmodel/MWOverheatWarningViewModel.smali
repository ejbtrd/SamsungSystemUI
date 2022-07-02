.class public Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;
.super Ljava/lang/Object;
.source "MWOverheatWarningViewModel.java"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mMWOverheatWarningDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    .line 29
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 30
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mMWOverheatWarningDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz p0, :cond_0

    .line 56
    invoke-interface {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

    return-object p0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v1, "com.samsung.android.extra.MULTI_WINDOW_ENABLE_REQUESTER"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const/4 v2, 0x1

    const-string v3, "com.samsung.android.extra.MULTI_WINDOW_ENABLED"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    .line 41
    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const/4 v3, 0x0

    const-string v4, "com.samsung.android.extra.IN_MULTI_WINDOW_MODE"

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p1

    .line 43
    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MWOverheatWarningViewModel"

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getOverheatWarningDialog(Ljava/lang/String;ZZ)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mMWOverheatWarningDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    goto :goto_0

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/MWOverheatWarningViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string/jumbo p1, "show() invalid AlertDialog"

    invoke-virtual {p0, v4, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
