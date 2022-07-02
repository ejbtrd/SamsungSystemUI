.class public abstract Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;
.super Ljava/lang/Object;
.source "SystemUIAnalyticsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$LaunchDevices;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$QuitDevices;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapAppList;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$ChooseAppsOnOff;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$IntroStart;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$AddDevices;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$Reorder;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$LeftChooseDevices;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$LaunchSmartThings;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$OpenSpinner;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapSpinnerApp;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapSmallTypeCard;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapMainActionButton;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$MoreManageApps;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$MoreSettings;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$MoveCard;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$LaunchFullController;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapAppListOnManageApps;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$ChooseAppsOnOffOnManageApps;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$SettingsTapUseWhileUnlocked;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$UseWhileUnlockedOnOff;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapCardWithButton;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapCardWithoutButton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getEventId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
