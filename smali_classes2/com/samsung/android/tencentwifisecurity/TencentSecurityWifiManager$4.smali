.class Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$4;
.super Ljava/lang/Object;
.source "TencentSecurityWifiManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->showTencentWifiWarningDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$4;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager$4;->this$0:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->access$500(Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;ZZ)V

    return-void
.end method
