.class public final Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaOutputDialogReceiver.kt"


# instance fields
.field private final mediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mediaOutputDialogFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;->mediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    .line 37
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "package_name"

    .line 40
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiver;->mediaOutputDialogFactory:Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->create(Ljava/lang/String;Z)V

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/android/systemui/media/dialog/MediaOutputDialogReceiverKt;->access$getDEBUG$p()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "MediaOutputDlgReceiver"

    const-string p1, "Unable to launch media output dialog. Package name is empty."

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
