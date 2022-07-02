.class public Lcom/android/systemui/volume/VolumeDependency;
.super Ljava/lang/Object;
.source "VolumeDependency.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDependencyBase;


# static fields
.field private static mProvider:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sVolumeDependency:Lcom/android/systemui/volume/VolumeDependency;


# instance fields
.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mVolumePanelLogger:Lcom/android/systemui/log/SamsungServiceLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/log/SamsungServiceLogger;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    .line 70
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 71
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    const-class v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDependency;->mVolumePanelLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    .line 75
    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDependency;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 77
    sput-object p0, Lcom/android/systemui/volume/VolumeDependency;->sVolumeDependency:Lcom/android/systemui/volume/VolumeDependency;

    return-void
.end method

.method private createDependency(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 110
    const-class v0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    const-class v1, Lcom/android/systemui/basic/util/CoverUtilWrapper;

    const-class v2, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    const-class v3, Lcom/android/systemui/volume/util/StatusBarWrapper;

    const-class v4, Lcom/android/systemui/volume/util/HandlerWrapper;

    const-class v5, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    const-class v6, Lcom/android/systemui/plugins/VolumeDialogController;

    const-class v7, Lcom/android/systemui/basic/util/LogWrapper;

    .line 112
    const-class v8, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 113
    new-instance p1, Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/store/VolumePanelStore;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    goto/16 :goto_0

    .line 114
    :cond_0
    const-class v8, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 115
    new-instance p1, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumeInfraMediatorImpl;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    .line 116
    new-instance v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;-><init>(Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;Lcom/android/systemui/basic/util/LogWrapper;)V

    move-object p1, v0

    goto/16 :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 119
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    .line 120
    :cond_2
    const-class v6, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 121
    new-instance p1, Lcom/android/systemui/volume/util/AudioManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/AudioManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 122
    :cond_3
    const-class v6, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 123
    new-instance p1, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/BluetoothAdapterWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 124
    :cond_4
    const-class v6, Lcom/android/systemui/volume/util/BixbyServiceManager;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 125
    new-instance p1, Lcom/android/systemui/volume/util/BixbyServiceManager;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0, v5}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/volume/util/ActivityManagerWrapper;)V

    goto/16 :goto_0

    .line 126
    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 127
    new-instance p1, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v0, Lcom/android/systemui/basic/util/ModuleType;->VOLUME:Lcom/android/systemui/basic/util/ModuleType;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDependency;->mVolumePanelLogger:Lcom/android/systemui/log/SamsungServiceLogger;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    goto/16 :goto_0

    .line 128
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 129
    new-instance p1, Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/ActivityManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 130
    :cond_7
    const-class v5, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 131
    new-instance p1, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    goto/16 :goto_0

    .line 132
    :cond_8
    const-class v5, Lcom/android/systemui/volume/util/ZenModeHelper;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 133
    new-instance p1, Lcom/android/systemui/volume/util/ZenModeHelper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/ZenModeHelper;-><init>()V

    goto/16 :goto_0

    .line 134
    :cond_9
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 135
    new-instance p1, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/HandlerWrapper;-><init>()V

    goto/16 :goto_0

    .line 136
    :cond_a
    const-class v5, Lcom/android/systemui/volume/util/TelephonyManagerWrapper;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 137
    new-instance p1, Lcom/android/systemui/volume/util/TelephonyManagerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/TelephonyManagerWrapper;-><init>()V

    goto/16 :goto_0

    .line 138
    :cond_b
    const-class v5, Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 139
    new-instance p1, Lcom/android/systemui/volume/util/VolumeRuneWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/VolumeRuneWrapper;-><init>()V

    goto/16 :goto_0

    .line 140
    :cond_c
    const-class v5, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 141
    new-instance p1, Lcom/android/systemui/volume/util/SoundPoolWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/HandlerWrapper;

    invoke-direct {p1, v0, p0}, Lcom/android/systemui/volume/util/SoundPoolWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/util/HandlerWrapper;)V

    goto/16 :goto_0

    .line 142
    :cond_d
    const-class v4, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 143
    new-instance p1, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/AccessibilityManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 144
    :cond_e
    const-class v4, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 145
    new-instance p1, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/StatusBarStateControllerWrapper;-><init>()V

    goto/16 :goto_0

    .line 146
    :cond_f
    const-class v4, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 147
    new-instance p1, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/SoundAssistantManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 148
    :cond_10
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 149
    new-instance p1, Lcom/android/systemui/volume/util/StatusBarWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/volume/util/StatusBarWrapper;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/volume/util/KeyguardManagerWrapper;)V

    goto/16 :goto_0

    .line 150
    :cond_11
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 151
    new-instance p1, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/KeyguardManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 152
    :cond_12
    const-class v2, Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 153
    new-instance p1, Lcom/android/systemui/volume/view/VolumePanelView;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/VolumePanelView;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    goto/16 :goto_0

    .line 154
    :cond_13
    const-class v2, Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 155
    new-instance p1, Lcom/android/systemui/volume/util/SystemClockWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/SystemClockWrapper;-><init>()V

    goto/16 :goto_0

    .line 156
    :cond_14
    const-class v2, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 157
    new-instance p1, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 158
    :cond_15
    const-class v2, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 159
    new-instance p1, Lcom/android/systemui/volume/util/ConfigurationWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/ConfigurationWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 160
    :cond_16
    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 161
    new-instance p1, Lcom/android/systemui/util/SettingsHelper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 162
    :cond_17
    const-class v2, Lcom/android/systemui/volume/util/BroadcastManager;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 163
    new-instance p1, Lcom/android/systemui/volume/util/BroadcastManager;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/basic/util/LogWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDependency;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p1, v0, v1, p0}, Lcom/android/systemui/volume/util/BroadcastManager;-><init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    goto/16 :goto_0

    .line 164
    :cond_18
    const-class v2, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 165
    new-instance p1, Lcom/android/systemui/volume/util/DesktopManagerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/DesktopManagerWrapper;-><init>()V

    goto/16 :goto_0

    .line 166
    :cond_19
    const-class v2, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 167
    new-instance p1, Lcom/android/systemui/volume/util/PowerManagerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/PowerManagerWrapper;-><init>()V

    goto/16 :goto_0

    .line 168
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 169
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0

    .line 170
    :cond_1b
    const-class v1, Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 171
    new-instance p1, Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/ToastWrapper;-><init>()V

    goto/16 :goto_0

    .line 172
    :cond_1c
    const-class v1, Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 173
    new-instance p1, Lcom/android/systemui/volume/util/SALoggingWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/SALoggingWrapper;-><init>()V

    goto/16 :goto_0

    .line 174
    :cond_1d
    const-class v1, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 175
    new-instance p1, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/SemPersonaManagerWrapper;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 176
    :cond_1e
    const-class v1, Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 177
    new-instance p1, Lcom/android/systemui/volume/view/VolumePanelMotion;

    invoke-direct {p1}, Lcom/android/systemui/volume/view/VolumePanelMotion;-><init>()V

    goto/16 :goto_0

    .line 178
    :cond_1f
    const-class v1, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 179
    new-instance p1, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/BluetoothAudioCastWrapper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 180
    :cond_20
    const-class v1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 181
    new-instance p1, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/util/DeviceProvisionedWrapper;-><init>(Lcom/android/systemui/basic/util/LogWrapper;)V

    goto :goto_0

    .line 182
    :cond_21
    const-class v1, Lcom/android/systemui/volume/VolumeStarInteractor;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 183
    new-instance p1, Lcom/android/systemui/volume/VolumeStarInteractor;

    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/VolumeStarInteractor;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 184
    :cond_22
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 185
    new-instance p1, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;-><init>()V

    goto :goto_0

    .line 186
    :cond_23
    const-class v1, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 187
    new-instance p1, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/SubDisplayVolumePanelPresentation;-><init>(Lcom/android/systemui/volume/VolumeDependencyBase;)V

    goto :goto_0

    .line 188
    :cond_24
    const-class v1, Lcom/android/systemui/volume/util/BlurEffect;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 189
    new-instance p1, Lcom/android/systemui/volume/util/BlurEffect;

    const-class v1, Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    invoke-direct {p1, v1, v2, p0}, Lcom/android/systemui/volume/util/BlurEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/util/StatusBarWrapper;Lcom/android/systemui/volume/util/SemWindowManagerWrapper;)V

    goto :goto_0

    :cond_25
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 88
    const-class v0, Lcom/android/systemui/volume/testinfra/FakeVolumeInfraMediator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object p0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    const-class p1, Lcom/samsung/systemui/splugins/volume/VolumeInfraMediator;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDependency;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    sget-object p0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getNewObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v1, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDependency;->createDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 105
    sget-object v0, Lcom/android/systemui/volume/VolumeDependency;->mProvider:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
