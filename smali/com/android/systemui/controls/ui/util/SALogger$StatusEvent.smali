.class public abstract Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;
.super Ljava/lang/Object;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StatusEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$NumberOfApps;,
        Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$DeviceAppStatus;,
        Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent$UseWhileUnlockedActive;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/util/SALogger$StatusEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getKey()Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$StatusEventId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
