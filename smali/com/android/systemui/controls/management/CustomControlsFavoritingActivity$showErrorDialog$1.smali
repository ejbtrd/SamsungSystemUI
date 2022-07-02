.class final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;
.super Ljava/lang/Object;
.source "CustomControlsFavoritingActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->showErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-virtual {v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->getTAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getActivity$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "loadForComponent - destroyed:"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getActivity$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$createErrorDialog(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$setRetryDialog$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Landroidx/appcompat/app/AlertDialog;)V

    .line 245
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$showErrorDialog$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getRetryDialog$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
