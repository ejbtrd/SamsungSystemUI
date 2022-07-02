.class public Lcom/android/systemui/statusbar/KshPresenter;
.super Ljava/lang/Object;
.source "KshPresenter.java"


# instance fields
.field private final ACTION_POGO_KEYBOARD_CHANGED:Ljava/lang/String;

.field private mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mContext:Landroid/content/Context;

.field private mData:Lcom/android/systemui/statusbar/model/KshData;

.field private final mHandler:Landroid/os/Handler;

.field private mIsNightModeOn:Z

.field private mLastConfig:Landroid/content/res/Configuration;

.field private mPogoKeyboardChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Lcom/android/systemui/statusbar/KshView;


# direct methods
.method public static synthetic $r8$lambda$GQn6AdFr22zhHRbfsyzfStLlPo0(Lcom/android/systemui/statusbar/KshPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KshPresenter;->lambda$dismissKeyboardShortcuts$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Xu9-F807JEREDxgyAWJE2RPW11c(Lcom/android/systemui/statusbar/KshPresenter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KshPresenter;->lambda$showKeyboardShortcutsDialog$0(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mHandler:Landroid/os/Handler;

    const-string v0, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->ACTION_POGO_KEYBOARD_CHANGED:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/KshPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KshPresenter$1;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/KshPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KshPresenter$2;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mPogoKeyboardChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mContext:Landroid/content/Context;

    .line 79
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mLastConfig:Landroid/content/res/Configuration;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mLastConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/KshView;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KshPresenter;->getStyleRes()I

    move-result v4

    invoke-direct {v3, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v3, p0}, Lcom/android/systemui/statusbar/KshView;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/KshPresenter;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mView:Lcom/android/systemui/statusbar/KshView;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/model/KshData;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/model/KshData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    .line 84
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    const-string v0, "input"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    .line 88
    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 89
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget v4, v0, v1

    .line 90
    invoke-virtual {p1, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 91
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 92
    invoke-virtual {v4}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    .line 93
    invoke-virtual {v5}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v6

    .line 94
    invoke-virtual {v5}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v5

    const/16 v7, 0x4e8

    if-ne v6, v7, :cond_1

    const v6, 0xa035

    if-eq v5, v6, :cond_2

    .line 96
    :cond_1
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Tab S3 Book Cover Keyboard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/model/KshData;->setPogoKeyboardConnected(Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KshPresenter;)Landroid/content/res/Configuration;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mLastConfig:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/KshView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mView:Lcom/android/systemui/statusbar/KshView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KshPresenter;)Lcom/android/systemui/statusbar/model/KshData;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KshPresenter;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/KshPresenter;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/KshPresenter;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KshPresenter;)I
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KshPresenter;->getStyleRes()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/KshPresenter;Ljava/util/List;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KshPresenter;->showKeyboardShortcutsDialog(Ljava/util/List;)V

    return-void
.end method

.method private getStyleRes()I
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mIsNightModeOn:Z

    if-eqz p0, :cond_0

    const p0, 0x103012e

    goto :goto_0

    :cond_0
    const p0, 0x1030132

    :goto_0
    return p0
.end method

.method private synthetic lambda$dismissKeyboardShortcuts$1()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mView:Lcom/android/systemui/statusbar/KshView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshView;->dismissKshDialog()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mView:Lcom/android/systemui/statusbar/KshView;

    return-void
.end method

.method private synthetic lambda$showKeyboardShortcutsDialog$0(Ljava/util/List;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mView:Lcom/android/systemui/statusbar/KshView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KshView;->dismissKshDialog()V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mView:Lcom/android/systemui/statusbar/KshView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KshView;->showKshDialog(Ljava/util/List;)V

    return-void
.end method

.method private showKeyboardShortcutsDialog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KshPresenter;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dismissKeyboardShortcuts()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 156
    const-class v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mPogoKeyboardChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KshPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    return-void
.end method

.method public getData(Lcom/android/systemui/statusbar/KshViewAdapter;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/KshViewAdapter;",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;)V"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    .line 148
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getSpecialCharacterNames()Landroid/util/SparseArray;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getModifierNames()Landroid/util/SparseArray;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    .line 149
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getSpecialCharacterDrawables()Landroid/util/SparseArray;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getModifierDrawables()Landroid/util/SparseArray;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    .line 150
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/model/KshData;->getBackupKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v8

    iget-object p0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/model/KshData;->getDefaultIcons()Ljava/util/HashMap;

    move-result-object v9

    move-object v1, p1

    move-object v2, p2

    .line 147
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KshViewAdapter;->setData(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/view/KeyCharacterMap;Landroid/view/KeyCharacterMap;Ljava/util/HashMap;)V

    return-void
.end method

.method public showKeyboardShortcuts(I)V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KshPresenter;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KshPresenter;->mPogoKeyboardChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mData:Lcom/android/systemui/statusbar/model/KshData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/model/KshData;->retrieveKeyCharacterMap(I)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/KshPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 131
    new-instance v1, Lcom/android/systemui/statusbar/KshPresenter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KshPresenter$3;-><init>(Lcom/android/systemui/statusbar/KshPresenter;)V

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V

    return-void
.end method
