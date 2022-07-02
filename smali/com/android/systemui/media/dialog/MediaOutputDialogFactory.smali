.class public final Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;
.super Ljava/lang/Object;
.source "MediaOutputDialogFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mediaSessionManager:Landroid/media/session/MediaSessionManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final starter:Lcom/android/systemui/plugins/ActivityStarter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->Companion:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/media/session/MediaSessionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/phone/ShadeController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/plugins/ActivityStarter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/internal/logging/UiEventLogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaSessionManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shadeController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "starter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationEntryManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "uiEventLogger"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 34
    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 35
    iput-object p4, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 36
    iput-object p5, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->starter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 37
    iput-object p6, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 38
    iput-object p7, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public static final synthetic access$getMediaOutputDialog$cp()Lcom/android/systemui/media/dialog/MediaOutputDialog;
    .locals 1

    .line 31
    sget-object v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    return-object v0
.end method

.method public static final synthetic access$setMediaOutputDialog$cp(Lcom/android/systemui/media/dialog/MediaOutputDialog;)V
    .locals 0

    .line 31
    sput-object p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Z)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->Companion:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;->getMediaOutputDialog()Lcom/android/systemui/media/dialog/MediaOutputDialog;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 47
    :goto_0
    new-instance v1, Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    .line 48
    iget-object v6, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v7, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v8, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object v9, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->starter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v10, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->notificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 49
    iget-object v11, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object v2, v1

    move-object v4, p1

    move v5, p2

    .line 47
    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/media/dialog/MediaOutputController;-><init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/logging/UiEventLogger;)V

    .line 50
    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputDialog;

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {p1, v2, p2, v1, p0}, Lcom/android/systemui/media/dialog/MediaOutputDialog;-><init>(Landroid/content/Context;ZLcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/internal/logging/UiEventLogger;)V

    .line 47
    invoke-virtual {v0, p1}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;->setMediaOutputDialog(Lcom/android/systemui/media/dialog/MediaOutputDialog;)V

    return-void
.end method
