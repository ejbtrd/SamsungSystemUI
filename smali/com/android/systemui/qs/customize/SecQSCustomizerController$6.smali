.class Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;
.super Ljava/lang/Object;
.source "SecQSCustomizerController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizerController;->showResetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$6;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$802(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-void
.end method
