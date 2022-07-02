.class public Lcom/android/systemui/util/QsResetSettingsManager;
.super Ljava/lang/Object;
.source "QsResetSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;
    }
.end annotation


# instance fields
.field private mAppliers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mContext:Landroid/content/Context;

.field private mSoftResetReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    .line 73
    iput-object p1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 76
    new-instance p1, Lcom/android/systemui/util/QsResetSettingsManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/QsResetSettingsManager$1;-><init>(Lcom/android/systemui/util/QsResetSettingsManager;)V

    iput-object p1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mSoftResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method


# virtual methods
.method public registerApplier(Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;)V
    .locals 2

    const/4 v0, 0x0

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string p0, "QsResetSettingsManager"

    const-string/jumbo p1, "registerApplier() mAppliers has same applier"

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public runReset()V
    .locals 2

    const-string v0, "QsResetSettingsManager"

    const-string/jumbo v1, "runReset"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/systemui/util/QsResetSettingsManager;->mAppliers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;

    if-eqz v1, :cond_0

    .line 114
    invoke-interface {v1}, Lcom/android/systemui/util/QsResetSettingsManager$ResetSettingsApplier;->applyResetSetting()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
