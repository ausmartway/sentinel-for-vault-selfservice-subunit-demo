module "tfplan-functions" {
    source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
    source = "./common-functions/tfrun-functions/tfrun-functions.sentinel"
}


policy "whitelist-providers" {
    source = "./whitelist-providers.sentinel"
    enforcement_level = "hard-mandatory"
}

policy "whitelist-resources" {
    source = "./whitelist-resources.sentinel"
    enforcement_level = "soft-mandatory"
}
