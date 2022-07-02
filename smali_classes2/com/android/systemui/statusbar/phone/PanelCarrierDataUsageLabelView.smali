.class public Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;
.super Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;
.source "PanelCarrierDataUsageLabelView.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCarrier:Ljava/lang/String;

.field private mDataUsage:Ljava/lang/String;

.field private mDataUsageVisibility:Z

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Ljava/lang/Thread;

.field mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mCarrier:Ljava/lang/String;

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mThread:Ljava/lang/Thread;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsageVisibility:Z

    .line 82
    new-instance p1, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance p1, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mCarrier:Ljava/lang/String;

    const-string p2, ""

    .line 31
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mThread:Ljava/lang/Thread;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsageVisibility:Z

    .line 82
    new-instance p1, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance p1, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->initView()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsageVisibility:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsageVisibility:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->getDataUsageResult()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->updateDataText()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private getDataUsageResult()Ljava/lang/String;
    .locals 8

    const-string v0, "PanelCarrierDataUsageLabelView"

    const-string v1, ""

    .line 99
    :try_start_0
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "content://com.samsung.android.sm.dcapi"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "getUsageLabel"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    .line 100
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 101
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "query result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object v3, v1

    .line 99
    :goto_0
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    :cond_0
    move-object v3, v1

    :goto_2
    if-eqz p0, :cond_1

    .line 104
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v3, v1

    .line 105
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query Data Usage fail: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    if-nez v3, :cond_2

    goto :goto_5

    .line 107
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_5
    return-object v1
.end method

.method private initView()V
    .locals 1

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mHandler:Landroid/os/Handler;

    .line 59
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsageVisibility:Z

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.ANIMATING"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setConcatText()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mCarrier:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, " | "

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConcatText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PanelCarrierDataUsageLabelView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updateDataText()V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsageVisibility:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->quick_panel_data_usage:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->setConcatText()V

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 138
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    .line 140
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data Usage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PanelCarrierDataUsageLabelView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;->onAttachedToWindow()V

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->registerReceiver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelCommonView;->onDetachedFromWindow()V

    .line 71
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public setLabelText(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mCarrier:Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->setConcatText()V

    return-void
.end method

.method public updateUsageInfo()V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mDataUsageVisibility:Z

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->updateDataText()V

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$2;

    const-string/jumbo v1, "updateUsageInfo"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelCarrierDataUsageLabelView;->mThread:Ljava/lang/Thread;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    const-string p0, "PanelCarrierDataUsageLabelView"

    const-string v0, "Last Thread still running"

    .line 126
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
