.class public final Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;
.super Ljava/lang/Object;
.source "NotificationSectionsFeatureManager.kt"


# static fields
.field private static sUsePeopleFiltering:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$setSUsePeopleFiltering$p(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$usePeopleFiltering(Lcom/android/systemui/util/DeviceConfigProxy;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->usePeopleFiltering(Lcom/android/systemui/util/DeviceConfigProxy;)Z

    move-result p0

    return p0
.end method

.method private static final usePeopleFiltering(Lcom/android/systemui/util/DeviceConfigProxy;)Z
    .locals 3

    .line 80
    sget-object v0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const-string/jumbo v1, "systemui"

    const-string/jumbo v2, "notifications_use_people_filtering"

    .line 81
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/util/DeviceConfigProxy;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    .line 85
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->sUsePeopleFiltering:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
