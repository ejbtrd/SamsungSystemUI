.class Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowOverheatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog$1;->this$0:Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog$1;->this$0:Lcom/android/wm/shell/draganddrop/MultiWindowOverheatDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
