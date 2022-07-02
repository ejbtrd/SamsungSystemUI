.class Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;
.super Landroid/app/AlertDialog;
.source "MultiWindowOverheatDialog.java"


# instance fields
.field private mDismissReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 49
    sget v0, Lcom/android/wm/shell/R$style;->Theme_DeviceDefault_MultiWindowOverheatDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance v0, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog$1;-><init>(Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;)V

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;->getMessageString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;->getPositiveButtonString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7d8

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method private getMessageString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 57
    sget-boolean p0, Lcom/android/wm/shell/CoreShellRune;->IS_TABLET_DEVICE:Z

    if-eqz p0, :cond_0

    .line 58
    sget p0, Lcom/android/wm/shell/R$string;->multiwindow_overheat_warning_dialog_body_tablet:I

    goto :goto_0

    .line 59
    :cond_0
    sget p0, Lcom/android/wm/shell/R$string;->multiwindow_overheat_warning_dialog_body_phone:I

    .line 60
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPositiveButtonString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/wm/shell/R$string;->yes:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private registerDismissReceiver()V
    .locals 2

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MWOverheatDialog"

    const-string/jumbo v1, "show mw overheat dialog"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private unregisterDismissReceiver()V
    .locals 1

    .line 88
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;->mDismissReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 0

    .line 69
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 70
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;->registerDismissReceiver()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 76
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;->unregisterDismissReceiver()V

    return-void
.end method
