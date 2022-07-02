.class public final Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
.super Ljava/lang/Object;
.source "EnterpriseDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNewToOldPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldToNewPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final timaversion:Z


# instance fields
.field mIsPseudoAdmin:Z

.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mRequestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUsesPolicies:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string/jumbo v0, "ro.config.timaversion"

    const-string v1, "0"

    .line 88
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->timaversion:Z

    .line 876
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    .line 877
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    .line 881
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    .line 883
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    .line 885
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    .line 1207
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x16

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    const v4, 0x10409b4

    const v5, 0x104089a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x17

    const-string v3, "com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    const v4, 0x10409b7

    const v5, 0x104089d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x18

    const-string v3, "com.samsung.android.knox.permission.KNOX_INVENTORY"

    const v4, 0x10409c3

    const v5, 0x10408a9

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x19

    const-string v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const v4, 0x10409ce

    const v5, 0x10408b4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1a

    const-string v3, "com.samsung.android.knox.permission.KNOX_ROAMING"

    const v4, 0x10409e3

    const v5, 0x10408cd

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1b

    const-string v3, "com.samsung.android.knox.permission.KNOX_WIFI"

    const v4, 0x10409f5

    const v5, 0x10408df

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1c

    const-string v3, "com.samsung.android.knox.permission.KNOX_SECURITY"

    const v4, 0x10409ea

    const v5, 0x10408d4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1d

    const-string v3, "com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    const v4, 0x10409d2

    const v5, 0x10408b8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1e

    const-string v3, "com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    const v4, 0x10409e2

    const v5, 0x10408cc

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x1f

    const-string v3, "com.samsung.android.knox.permission.KNOX_LOCATION"

    const v4, 0x10409dc

    const v5, 0x10408c6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x20

    const-string v3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    const v4, 0x10409c7

    const v5, 0x10408ad

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x21

    const-string v3, "com.samsung.android.knox.permission.KNOX_VPN"

    const v4, 0x10409f4

    const v5, 0x10408de

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x22

    const-string v3, "com.samsung.android.knox.permission.KNOX_APN"

    const v4, 0x10409b2

    const v5, 0x1040898

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x23

    const-string v3, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    const v4, 0x10409de

    const v5, 0x10408c8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x24

    const-string v3, "com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    const v6, 0x10409ba

    const v7, 0x10408a0

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x35

    const-string v3, "com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    const v6, 0x10409b9

    const v7, 0x104089f

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x25

    const-string v3, "com.samsung.android.knox.permission.KNOX_DATE_TIME"

    const v6, 0x10409c1

    const v7, 0x10408a7

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x36

    const-string v3, "com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    const v6, 0x10409a4

    const v7, 0x104088a

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x37

    const-string v3, "com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    const v6, 0x104099d

    const v7, 0x1040883

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x26

    const-string v3, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    const v6, 0x10409cf

    const v7, 0x10408b5

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x27

    const-string v3, "com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    const v6, 0x10409c8

    const v7, 0x10408ae

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x28

    const-string v3, "com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    const v6, 0x10409e1

    const v7, 0x10408cb

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x29

    const-string v3, "com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    const v6, 0x10409d5

    const v7, 0x10408bb

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2a

    const-string v3, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    const v6, 0x10409be

    const v7, 0x10408a4

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2b

    const-string v3, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const v6, 0x10409b6

    const v7, 0x104089c

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x30

    const-string v3, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    const v6, 0x10409c9

    const v7, 0x10408af

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1370
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2c

    const-string v3, "com.samsung.android.knox.permission.KNOX_LDAP"

    const v6, 0x10409da

    const v7, 0x10408c0

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2e

    const-string v3, "com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    const v6, 0x10409db

    const v7, 0x10408c1

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1382
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2f

    const-string v3, "com.samsung.android.knox.permission.KNOX_DUAL_SIM"

    const v6, 0x10409c5

    const v7, 0x10408ab

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1391
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x43

    const-string v3, "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

    const v6, 0x10409e6

    const v7, 0x10408d0

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x2d

    const-string v3, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const v6, 0x10409d0

    const v7, 0x10408b6

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x31

    const-string v3, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    const v6, 0x10409c6

    const v7, 0x10408ac

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x32

    const-string v3, "com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    const v6, 0x10409dd

    const v7, 0x10408c7

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x33

    const-string v3, "com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    const v6, 0x10409b8

    const v7, 0x104089e

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x6b

    const-string v3, "com.samsung.android.knox.permission.KNOX_ENHANCED_ATTESTATION"

    const v6, 0x1040988

    const v7, 0x104086e

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1430
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x6a

    const-string v3, "com.samsung.android.knox.permission.KNOX_MOBILE_THREAT_DEFENSE"

    const v6, 0x10409ee

    const v7, 0x10408d8

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x39

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const v6, 0x10409d8

    const v7, 0x10408be

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x38

    const-string v3, "com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    const v6, 0x10409d6

    const v7, 0x10408bc

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x6f

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    const v6, 0x10409c2

    const v7, 0x10408a8

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3a

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    const v6, 0x10409e8

    const v7, 0x10408d2

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3b

    const-string v3, "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

    const v6, 0x10409e9

    const v7, 0x10408d3

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1473
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3c

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const v8, 0x10409d9

    const v9, 0x10408bf

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3f

    const-string v3, "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

    const v8, 0x10409a0

    const v9, 0x1040886

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x40

    const-string v3, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    const v8, 0x10409a1

    const v9, 0x1040887

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x41

    const-string v3, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    const v10, 0x104099e

    const v11, 0x1040884

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x46

    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x44

    const-string v3, "com.samsung.android.knox.permission.KNOX_EBILLING"

    const v10, 0x1040989

    const v11, 0x104086f

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1511
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3d

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    const v12, 0x10409bc

    const v13, 0x10408a2

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1517
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x48

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    const v12, 0x10409f2

    const v13, 0x10408dc

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x49

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    const v12, 0x10409f3

    const v13, 0x10408dd

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1529
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4a

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    const v12, 0x1040a37

    const v13, 0x1040921

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4c

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

    const v12, 0x10409f1

    const v13, 0x10408db

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1541
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x3e

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    const v12, 0x10409d3

    const v13, 0x10408b9

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4b

    const-string v3, "com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    const v12, 0x10409d4

    const v13, 0x10408ba

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x42

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    const v12, 0x10409e7

    const v13, 0x10408d1

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1563
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x47

    const-string v3, "com.sec.enterprise.permission.KNOX_SDP,com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    const v12, 0x10409e4

    const v13, 0x10408ce

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1570
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4d

    const-string v3, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    const v12, 0x10409d1

    const v13, 0x10408b7

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4e

    const-string v3, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    const v12, 0x10409bd

    const v13, 0x10408a3

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x4f

    const-string v3, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    const v12, 0x10409bf

    const v13, 0x10408a5

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1588
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x50

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    const v12, 0x104099a

    const v13, 0x1040880

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x51

    const-string v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    const v12, 0x104099b

    const v13, 0x1040881

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1600
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x52

    const-string v3, "com.samsung.android.knox.permission.KNOX_NPA"

    const v12, 0x10409a6

    const v13, 0x104088c

    invoke-direct {v1, v2, v3, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1606
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x53

    const-string v3, "com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x54

    const-string v3, "com.samsung.android.knox.permission.KNOX_DEX"

    const v10, 0x10409c4

    const v11, 0x10408aa

    invoke-direct {v1, v2, v3, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x55

    const-string v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1624
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x56

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    const v8, 0x1040a36

    const v9, 0x1040920

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x57

    const-string v3, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    const v8, 0x10409a3

    const v9, 0x1040889

    invoke-direct {v1, v2, v3, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1636
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x59

    const-string v3, "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x5a

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_PERMISSION_MGMT"

    const v4, 0x10409b5

    const v5, 0x104089b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x5b

    const-string v3, "com.samsung.android.knox.permission.KNOX_SMARTCARD"

    const v4, 0x10409ed

    const v5, 0x10408d7

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x6e

    const-string v3, "com.samsung.android.knox.permission.KNOX_HDM"

    const v4, 0x10409a5

    const v5, 0x104088b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1660
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x70

    const-string v3, "com.samsung.android.knox.permission.KNOX_APP_SEPARATION"

    const v4, 0x1040999

    const v5, 0x104087f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x71

    const-string v3, "com.samsung.android.knox.permission.SMART_SCAN"

    const v4, 0x104099c

    const v5, 0x1040882

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x72

    const-string v3, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x6d

    const-string v3, "com.samsung.android.knox.permission.KNOX_DEVICE_CONFIGURATION"

    const v6, 0x10409a2

    const v7, 0x1040888

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x73

    const-string v3, "com.samsung.android.knox.permission.KNOX_NDA_PERIPHERAL"

    const v6, 0x1040a01

    const v7, 0x10408eb

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x74

    const-string v3, "com.samsung.android.knox.permission.KNOX_NDA_DEVICE_SETTINGS"

    const v6, 0x1040985

    const v7, 0x104086b

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x75

    const-string v3, "com.samsung.android.knox.permission.KNOX_NDA_DATA_ANALYTICS"

    const v6, 0x1040984

    const v7, 0x104086a

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x76

    const-string v3, "com.samsung.android.knox.permission.KNOX_NDA_AI"

    const v6, 0x10409a9

    const v7, 0x104088f

    invoke-direct {v1, v2, v3, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x77

    const-string v3, "com.samsung.android.knox.permission.SMART_SCAN_BASIC"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const/16 v2, 0x78

    const-string v3, "com.samsung.android.knox.permission.SMART_SCAN_ADVANCED"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 1728
    :goto_0
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1729
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    .line 1730
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1731
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v5, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    iget-object v2, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1734
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1735
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    aget-object v4, v2, v0

    const/4 v5, 0x1

    aget-object v6, v2, v5

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    aget-object v4, v2, v5

    aget-object v2, v2, v0

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2084
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 1804
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 1805
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    .line 1807
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    return-void
.end method

.method private readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 3

    .line 2073
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 2074
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 2076
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 1

    .line 2066
    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p0, -0x1

    move v0, p0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 2067
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 2068
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2046
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 2056
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2058
    iget-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 2060
    iget-boolean p0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mIsPseudoAdmin:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
