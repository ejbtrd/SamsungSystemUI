.class public final synthetic Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda29;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda29;-><init>()V

    sput-object v0, Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda29;->INSTANCE:Lcom/android/wifitrackerlib/WifiPickerTracker$$ExternalSyntheticLambda29;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    invoke-static {p1}, Lcom/android/wifitrackerlib/WifiPickerTracker;->$r8$lambda$7ju6f8Vh1K0VBbS7wi4fysTlNR0(Lcom/android/wifitrackerlib/StandardWifiEntry;)Z

    move-result p0

    return p0
.end method