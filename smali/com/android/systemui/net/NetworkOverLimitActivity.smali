.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "NetworkOverLimitActivity.java"


# instance fields
.field private mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;


# direct methods
.method public static synthetic $r8$lambda$4YmUc9wKP3DnfCqUfu4n-ByUJOU(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->lambda$onCreate$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Jlj6p3mCoGjuF3r2PZJCAfPgf3g(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/net/NetworkOverLimitActivity;->lambda$onCreate$0(Landroid/net/NetworkTemplate;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I
    .locals 1

    .line 108
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result p0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    .line 116
    sget p0, Lcom/android/systemui/R$string;->data_usage_disabled_dialog_title:I

    return p0

    .line 111
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->data_connection_data_limit_data_usage_disabled_title:I

    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/net/NetworkTemplate;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Landroid/content/DialogInterface;)V
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private snoozePolicy(Landroid/net/NetworkTemplate;)V
    .locals 1

    const-string p0, "netpolicy"

    .line 99
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 98
    invoke-static {p0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object p0

    .line 101
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NetworkOverLimitActivity"

    const-string v0, "problem snoozing network policy"

    .line 103
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v1, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const-string v1, "NetworkOverLimitActivity"

    if-nez p1, :cond_0

    const-string p0, "invalid template"

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v2, Lcom/android/systemui/R$string;->data_connection_data_limit_data_usage_disabled_body:I

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v2, Lcom/android/systemui/R$string;->data_connection_data_limit_resume_button:I

    new-instance v3, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    sget v0, Lcom/android/systemui/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 74
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    new-instance v0, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/net/NetworkOverLimitActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 78
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v0, 0x3e99999a    # 0.3f

    .line 79
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v0, 0x50

    .line 80
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 81
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/systemui/net/NetworkOverLimitActivity;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 94
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
