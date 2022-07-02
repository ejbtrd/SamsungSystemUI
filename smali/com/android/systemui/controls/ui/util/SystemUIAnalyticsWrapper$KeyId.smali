.class public abstract Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;
.super Ljava/lang/Object;
.source "SystemUIAnalyticsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$NumberOfSelectedApps;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$NumberOfTotalApps;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Template;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$DeviceName;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$DeviceType;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$AppName;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$SelectedControl;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$AllControls;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Structure;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Zone;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getKeyId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
