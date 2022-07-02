.class public Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;
.super Ljava/lang/Object;
.source "MobileDeviceWarningViewModel.java"

# interfaces
.implements Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;


# instance fields
.field private mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field mPopupCompleted:Z

.field private mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mPopupCompleted:Z

    .line 31
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method public getAction()Ljava/lang/String;
    .locals 0

    const-string p0, "android.intent.action.BOOT_COMPLETED"

    return-object p0
.end method

.method public show(Landroid/content/Intent;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mIntentWrapper:Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->getAction(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mPopupCompleted:Z

    if-eqz p1, :cond_1

    .line 43
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string p1, "MobileDeviceWarningViewModel"

    const-string v0, "makeToast one only time"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mPopupCompleted:Z

    .line 48
    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/MobileDeviceWarningViewModel;->mToastWrapper:Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    sget p1, Lcom/android/systemui/R$string;->mobile_device_warning_toast_notification:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/popup/util/PopupUIToastWrapper;->makeToast(I)V

    return-void
.end method
