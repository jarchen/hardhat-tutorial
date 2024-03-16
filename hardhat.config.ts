import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import "dotenv"

// const PRIVATE_KEY = process.env.PRIVATE_KEY || "0x0";

const config: HardhatUserConfig = {
  solidity: "0.8.24",
};

export default config;
