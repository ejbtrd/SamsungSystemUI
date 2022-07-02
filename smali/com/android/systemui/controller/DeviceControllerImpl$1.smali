.class Lcom/android/systemui/controller/DeviceControllerImpl$1;
.super Ljava/lang/Object;
.source "DeviceControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controller/DeviceControllerImpl;->turnOffDevice(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controller/DeviceControllerImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$res:I


# direct methods
.method constructor <init>(Lcom/android/systemui/controller/DeviceControllerImpl;Landroid/content/Context;I)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/systemui/controller/DeviceControllerImpl$1;->this$0:Lcom/android/systemui/controller/DeviceControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controller/DeviceControllerImpl$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/controller/DeviceControllerImpl$1;->val$res:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/systemui/controller/DeviceControllerImpl$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/controller/DeviceControllerImpl$1;->val$res:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
