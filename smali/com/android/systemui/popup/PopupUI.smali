.class public Lcom/android/systemui/popup/PopupUI;
.super Lcom/android/systemui/SystemUI;
.source "PopupUI.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mPopupUIReceiver:Landroid/content/BroadcastReceiver;

.field private mViewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            "Ljava/util/List<",
            "Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance p1, Lcom/android/systemui/popup/PopupUI$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/popup/PopupUI$1;-><init>(Lcom/android/systemui/popup/PopupUI;)V

    iput-object p1, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/popup/PopupUI;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 60
    iput-object p3, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/popup/PopupUI;)Lcom/android/systemui/basic/util/LogWrapper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/popup/PopupUI;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public onUiModeChanged()V
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    .line 109
    invoke-interface {v0}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->dismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 7

    .line 65
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 67
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/popup/PopupUI;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;

    .line 69
    invoke-interface {v1}, Lcom/android/systemui/popup/viewmodel/PopupUIViewModel;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 71
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 74
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/popup/PopupUI;->mPopupUIReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const-string v5, "com.samsung.systemui.POPUP_UI_PERMISSION"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
