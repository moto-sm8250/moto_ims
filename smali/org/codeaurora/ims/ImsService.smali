.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/telephony/ims/ImsService;
.source "ImsService.java"


# static fields
.field private static final INVALID_SLOT_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static final UNINITIALIZED_VALUE:I = -0x1

.field private static mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;


# instance fields
.field private mNumPhonesCache:I

.field private mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

.field private mSubController:Lorg/codeaurora/ims/ImsSubController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    return-void
.end method

.method private getNumSlots()I
    .locals 2

    .line 47
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 48
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 49
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    .line 51
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumPhonesCache:I

    return v0
.end method

.method public static getServiceSubs()[Lorg/codeaurora/ims/ImsServiceSub;
    .locals 1

    .line 74
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    return-object v0
.end method

.method private migrateDb()V
    .locals 7

    .line 79
    const-string v0, "rtt_mode"

    .line 80
    .local v0, "QTI_IMS_RTT_MODE":Ljava/lang/String;
    const/4 v1, -0x1

    .line 83
    .local v1, "RTT_MODE_INVALID":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rtt_mode"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 85
    .local v2, "rttMode":I
    if-eq v2, v4, :cond_0

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upgradeDb: migrate to new db key for rtt. mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rtt_calling_mode"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 6

    .line 55
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getQtiCarrierConfigHelper()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->setup(Landroid/content/Context;)V

    .line 56
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->migrateDb()V

    .line 57
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    .line 58
    .local v0, "numSlots":I
    new-array v1, v0, [Lorg/codeaurora/ims/ImsServiceSub;

    sput-object v1, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 59
    new-array v1, v0, [Lorg/codeaurora/ims/ImsSenderRxr;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 61
    iget-object v2, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    new-instance v3, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v3, p0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;I)V

    aput-object v3, v2, v1

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/ImsSubController;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v1, p0, v2}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;[Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 64
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 65
    sget-object v2, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v3, Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-direct {v3, p0, v1, v4, v5}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;)V

    aput-object v3, v2, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .line 69
    .local v1, "defaultSub":I
    sget-object v2, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {v2, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init([Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    .line 70
    invoke-static {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->getInstance(Landroid/content/Context;)Lorg/codeaurora/ims/ImsPhoneListenerController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsPhoneListenerController;->start()V

    .line 71
    return-void
.end method


# virtual methods
.method public createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 2
    .param p1, "slotId"    # I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMmTelFeature :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 184
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    return-object v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMmTelFeature :: Invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableIms(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableIms :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 163
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableIms :: Invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void
.end method

.method public enableIms(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIms :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 149
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIms :: Invalid slotId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 2
    .param p1, "slotId"    # I

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 201
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig :: invalid slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQtiCarrierConfigHelper()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;
    .locals 1

    .line 245
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->getInstance()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    return-object v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 2
    .param p1, "slotId"    # I

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistration :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 217
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsRegistrationInterface()Lorg/codeaurora/ims/ImsRegistrationImpl;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistration :: invalid slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 96
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onCreate()V

    .line 97
    const-string v0, "ImsService created!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->setup()V

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 225
    const-string v0, "Ims Service Destroyed Successfully..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->dispose()V

    .line 227
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubController;->dispose()V

    .line 230
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 231
    sget-object v1, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 232
    sget-object v1, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    aput-object v2, v1, v0

    .line 233
    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    aput-object v2, v1, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_1
    sput-object v2, Lorg/codeaurora/ims/ImsService;->mServiceSubs:[Lorg/codeaurora/ims/ImsServiceSub;

    .line 236
    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mSenderRxrs:[Lorg/codeaurora/ims/ImsSenderRxr;

    .line 237
    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 238
    invoke-static {p0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->getInstance(Landroid/content/Context;)Lorg/codeaurora/ims/ImsPhoneListenerController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsPhoneListenerController;->stop()V

    .line 239
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getQtiCarrierConfigHelper()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->teardown()V

    .line 240
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onDestroy()V

    .line 241
    return-void
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 4

    .line 115
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;-><init>()V

    .line 116
    .local v0, "features":Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSlots()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 118
    invoke-virtual {v2, v1, v3}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public readyForFeatureCreation()V
    .locals 1

    .line 136
    const-string v0, "readyForFeatureCreation :: No-op"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    return-void
.end method
