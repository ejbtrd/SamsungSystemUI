.class public final synthetic Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/wifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    return-object p0
.end method
