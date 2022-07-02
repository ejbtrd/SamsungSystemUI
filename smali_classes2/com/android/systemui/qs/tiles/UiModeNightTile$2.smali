.class Lcom/android/systemui/qs/tiles/UiModeNightTile$2;
.super Ljava/lang/Object;
.source "UiModeNightTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/UiModeNightTile;->showNightModeMenuDisabledReasonToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

.field final synthetic val$toastMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/UiModeNightTile;Ljava/lang/String;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;->val$toastMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;->this$0:Lcom/android/systemui/qs/tiles/UiModeNightTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/UiModeNightTile;->access$2600(Lcom/android/systemui/qs/tiles/UiModeNightTile;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/UiModeNightTile$2;->val$toastMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 423
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
