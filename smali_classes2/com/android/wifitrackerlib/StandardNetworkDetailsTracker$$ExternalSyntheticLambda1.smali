.class public final synthetic Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;

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

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-static {p1}, Lcom/android/wifitrackerlib/StandardNetworkDetailsTracker;->$r8$lambda$uwDsEET44k56EhRocr4DVGQHq9A(Lcom/samsung/android/wifi/SemWifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
