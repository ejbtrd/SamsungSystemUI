.class public Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;
.super Ljava/lang/Object;
.source "DataConnectionDataLimitDialog.java"

# interfaces
.implements Lcom/android/systemui/popup/view/PopupUIAlertDialog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    return-void
.end method

.method public isShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public show()V
    .locals 7

    .line 29
    iget-object v0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 30
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DataConnectionDataLimitDialog"

    if-nez v1, :cond_4

    .line 35
    iget-object v1, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 39
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 40
    iget-object v6, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :cond_2
    if-eqz v3, :cond_3

    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.net.NetworkOverLimitActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 50
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 51
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateCarrierMetered(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    const-string v2, "android.net.NETWORK_TEMPLATE"

    .line 52
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 59
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string/jumbo v0, "showDataConnectionNotifications() : hasPolicy is false"

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/popup/view/DataConnectionDataLimitDialog;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string/jumbo v0, "showDataConnectionNotifications() : Failed TelephonyManager.getSubscriberId"

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
