.class public final Lcom/android/systemui/media/MediaDataManagerKt;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"


# static fields
.field private static final ART_URIS:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/SmartspaceMediaData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOADING:Lcom/android/systemui/media/MediaData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 37

    const-string v0, "android.media.metadata.ALBUM_ART_URI"

    const-string v1, "android.media.metadata.ART_URI"

    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    .line 79
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 76
    sput-object v0, Lcom/android/systemui/media/MediaDataManagerKt;->ART_URIS:[Ljava/lang/String;

    .line 85
    new-instance v0, Lcom/android/systemui/media/MediaData;

    move-object v1, v0

    .line 86
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v13, "INVALID"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/high16 v27, 0xfe0000

    const/16 v28, 0x0

    .line 85
    invoke-direct/range {v1 .. v28}, Lcom/android/systemui/media/MediaData;-><init>(IIZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZZLjava/lang/String;ZLjava/lang/Boolean;ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/MediaDataManagerKt;->LOADING:Lcom/android/systemui/media/MediaData;

    .line 88
    new-instance v0, Lcom/android/systemui/media/SmartspaceMediaData;

    .line 89
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v35

    const-string v30, "INVALID"

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v33, "INVALID"

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v0

    .line 88
    invoke-direct/range {v29 .. v36}, Lcom/android/systemui/media/SmartspaceMediaData;-><init>(Ljava/lang/String;ZZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;I)V

    sput-object v0, Lcom/android/systemui/media/MediaDataManagerKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/SmartspaceMediaData;

    return-void
.end method

.method public static final synthetic access$getART_URIS$p()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/media/MediaDataManagerKt;->ART_URIS:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLOADING$p()Lcom/android/systemui/media/MediaData;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/media/MediaDataManagerKt;->LOADING:Lcom/android/systemui/media/MediaData;

    return-object v0
.end method

.method public static final getEMPTY_SMARTSPACE_MEDIA_DATA()Lcom/android/systemui/media/SmartspaceMediaData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 88
    sget-object v0, Lcom/android/systemui/media/MediaDataManagerKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/SmartspaceMediaData;

    return-object v0
.end method

.method public static synthetic getEMPTY_SMARTSPACE_MEDIA_DATA$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static final isMediaNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p0    # Landroid/service/notification/StatusBarNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "sbn"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->hasMediaSession()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object p0

    .line 96
    const-class v0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Landroid/app/Notification$MediaStyle;

    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
