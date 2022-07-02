.class final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$1;
.super Ljava/lang/Object;
.source "CustomControlsFavoritingActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->createErrorDialog()Landroidx/appcompat/app/AlertDialog;
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

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$createErrorDialog$builder$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$loadControls(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    .line 263
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
