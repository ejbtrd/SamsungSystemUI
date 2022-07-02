.class public final synthetic Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

.field public final synthetic f$1:Landroid/content/ClipData;

.field public final synthetic f$2:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;->f$1:Landroid/content/ClipData;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;->f$1:Landroid/content/ClipData;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$$ExternalSyntheticLambda0;->f$2:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->$r8$lambda$CGEGKfVAXsF-kNWx7wehxuWby64(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;Landroid/content/ClipData;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$ResultExtra;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
