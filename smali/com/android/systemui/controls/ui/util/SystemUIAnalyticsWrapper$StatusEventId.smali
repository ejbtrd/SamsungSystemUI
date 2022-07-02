.class public abstract Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;
.super Ljava/lang/Object;
.source "SystemUIAnalyticsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatusEventId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$NumberOfAppsInDevices;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$DevicesAppsStatus;,
        Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId$UseWhileUnlockedOnOff;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getStatusEventId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
