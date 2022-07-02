.class public abstract Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;
.super Ljava/lang/Object;
.source "SystemUIAnalyticsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScreenId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$Intro;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$ChooseDevices;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$IntroNoAppsToShow;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$NoDeviceSelected;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$CustomPanel;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$ManageApps;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$Setting;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$UseWhile;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getScreenId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
