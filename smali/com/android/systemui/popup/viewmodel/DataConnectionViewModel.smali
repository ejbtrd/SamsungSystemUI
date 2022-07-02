.class public Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;
.super Ljava/lang/Object;
.source "DataConnectionViewModel.java"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

.field private mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

.field private mHasMobileDataFeature:Z

.field private mHasVoiceCallingFeature:Z

.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

.field private mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    .line 45
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 46
    iput-object p4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    .line 47
    iput-object p5, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    .line 48
    iput-object p6, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz p0, :cond_0

    .line 85
    invoke-interface {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.systemui.popup.intent.DATA_CONNECTION_ERROR"

    return-object p0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 8

    .line 53
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasMobileDataFeature:Z

    .line 59
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 60
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasVoiceCallingFeature:Z

    .line 62
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mUtil:Lcom/android/systemui/popup/util/PopupUIUtil;

    invoke-virtual {v0}, Lcom/android/systemui/popup/util/PopupUIUtil;->isNoReadySim()Z

    move-result v0

    const-string v3, "DataConnectionViewModel"

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasMobileDataFeature:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mHasVoiceCallingFeature:Z

    if-nez v0, :cond_2

    goto :goto_2

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const/4 v4, -0x1

    const-string/jumbo v5, "type"

    invoke-virtual {v0, p1, v5, v4}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 69
    iget-object v4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v5, "no_signal_retry_enable"

    invoke-virtual {v4, p1, v5, v1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    .line 70
    iget-object v5, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    const-string v6, "no_signal_retry_intent"

    invoke-virtual {v5, p1, v6}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 72
    iget-object v5, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDialogFactory:Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-virtual {v1, v0, v4, p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;->getDataConnectionDialog(IZLandroid/app/PendingIntent;)Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mDataConnectionErrorDialog:Lcom/android/systemui/popup/view/PopupUIAlertDialog;

    if-eqz p1, :cond_4

    .line 76
    invoke-interface {p1}, Lcom/android/systemui/popup/view/PopupUIAlertDialog;->show()V

    goto :goto_1

    .line 78
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string/jumbo p1, "show() invalid AlertDialog"

    invoke-virtual {p0, v3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 63
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v0, "Not ready to show DataConnectionErrorDialog()"

    invoke-virtual {p1, v3, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    sget p1, Lcom/android/systemui/R$string;->data_connection_error_toast_notification:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->makeToast(I)V

    return-void
.end method
